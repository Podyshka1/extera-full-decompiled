.class public final Landroidx/camera/core/RotationProvider$1;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/RotationProvider;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/RotationProvider;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/camera/core/RotationProvider;)V
    .locals 0

    iput-object p2, p0, Landroidx/camera/core/RotationProvider$1;->this$0:Landroidx/camera/core/RotationProvider;

    .line 74
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/RotationProvider$1;->this$0:Landroidx/camera/core/RotationProvider;

    invoke-static {v0, p1}, Landroidx/camera/core/RotationProvider;->access$orientationToSurfaceRotation(Landroidx/camera/core/RotationProvider;I)I

    move-result p1

    .line 80
    iget-object v0, p0, Landroidx/camera/core/RotationProvider$1;->this$0:Landroidx/camera/core/RotationProvider;

    invoke-static {v0, p1}, Landroidx/camera/core/RotationProvider;->access$updateRotation(Landroidx/camera/core/RotationProvider;I)V

    return-void
.end method
