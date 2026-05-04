.class public final synthetic Landroidx/camera/video/Recorder$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/Recorder;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda8;->f$0:Landroidx/camera/video/Recorder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda8;->f$0:Landroidx/camera/video/Recorder;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Landroidx/camera/video/Recorder;->$r8$lambda$ishpOggjNhGW1PgfYsLj1u3JJbo(Landroidx/camera/video/Recorder;Landroid/net/Uri;)V

    return-void
.end method
