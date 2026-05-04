.class Landroidx/camera/video/Recorder$4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/video/Recorder;->updateEncoderCallbacks(Landroidx/camera/video/Recorder$RecordingRecord;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/video/Recorder;

.field final synthetic val$audioErrorConsumer:Landroidx/core/util/Consumer;


# direct methods
.method constructor <init>(Landroidx/camera/video/Recorder;Landroidx/core/util/Consumer;)V
    .locals 0

    .line 2032
    iput-object p1, p0, Landroidx/camera/video/Recorder$4;->this$0:Landroidx/camera/video/Recorder;

    iput-object p2, p0, Landroidx/camera/video/Recorder$4;->val$audioErrorConsumer:Landroidx/core/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
