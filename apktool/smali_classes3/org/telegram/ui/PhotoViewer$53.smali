.class Lorg/telegram/ui/PhotoViewer$53;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->createVideoControlsInterface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .locals 0

    .line 9962
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 9965
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method
