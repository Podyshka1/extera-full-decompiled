.class public final synthetic Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/CameraInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/CameraInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda9;->f$0:Landroidx/camera/core/CameraInfo;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda9;->f$0:Landroidx/camera/core/CameraInfo;

    check-cast p1, Landroidx/camera/video/Quality;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/camera/CameraXSession;->$r8$lambda$01A6A-phNT0-EZ3ty8WLlv6PKG4(Landroidx/camera/core/CameraInfo;Landroidx/camera/video/Quality;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
