.class public final synthetic Landroidx/camera/video/Recorder$Builder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/QualitySelector;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/QualitySelector;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/Recorder$Builder$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/video/QualitySelector;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/camera/video/Recorder$Builder$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/video/QualitySelector;

    check-cast p1, Landroidx/camera/video/VideoSpec$Builder;

    invoke-static {v0, p1}, Landroidx/camera/video/Recorder$Builder;->$r8$lambda$YoXQhD-A9sD8ATSj2IUTdprINyo(Landroidx/camera/video/QualitySelector;Landroidx/camera/video/VideoSpec$Builder;)V

    return-void
.end method
