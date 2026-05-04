.class public final Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ExtendableBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/interop/CaptureRequestOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion;


# instance fields
.field private final mutableOptionsBundle:Landroidx/camera/core/impl/MutableOptionsBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->Companion:Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->mutableOptionsBundle:Landroidx/camera/core/impl/MutableOptionsBundle;

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/camera2/interop/CaptureRequestOptions;
    .locals 3

    .line 143
    new-instance v0, Landroidx/camera/camera2/interop/CaptureRequestOptions;

    iget-object v1, p0, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->mutableOptionsBundle:Landroidx/camera/core/impl/MutableOptionsBundle;

    invoke-static {v1}, Landroidx/camera/core/impl/OptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object v1

    const-string v2, "from(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/camera/camera2/interop/CaptureRequestOptions;-><init>(Landroidx/camera/core/impl/Config;)V

    return-object v0
.end method

.method public getMutableConfig()Landroidx/camera/core/impl/MutableConfig;
    .locals 1

    .line 117
    iget-object v0, p0, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->mutableOptionsBundle:Landroidx/camera/core/impl/MutableOptionsBundle;

    return-object v0
.end method
