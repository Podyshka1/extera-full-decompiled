.class Lorg/telegram/ui/SecretMediaViewer$8;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretMediaViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V
    .locals 0

    .line 927
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$8;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 930
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$8;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetseekbar(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method
