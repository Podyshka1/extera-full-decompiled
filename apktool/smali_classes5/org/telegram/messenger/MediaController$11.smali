.class Lorg/telegram/messenger/MediaController$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    .line 3872
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$11;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needUpdate()Z
    .locals 1

    .line 3880
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentAudiVisualizerDrawable()Lorg/telegram/ui/Components/AudioVisualizerDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AudioVisualizerDrawable;->getParentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onVisualizerUpdate(ZZ[F)V
    .locals 1

    .line 3875
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentAudiVisualizerDrawable()Lorg/telegram/ui/Components/AudioVisualizerDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AudioVisualizerDrawable;->setWaveform(ZZ[F)V

    return-void
.end method
