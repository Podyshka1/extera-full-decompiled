.class public final synthetic Landroidx/camera/video/Recorder$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/Recorder;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda5;->f$0:Landroidx/camera/video/Recorder;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/camera/video/Recorder$$ExternalSyntheticLambda5;->f$0:Landroidx/camera/video/Recorder;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/camera/video/Recorder;->$r8$lambda$M45O7_hkWfx-8GwBJi61ZgT4oLU(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
