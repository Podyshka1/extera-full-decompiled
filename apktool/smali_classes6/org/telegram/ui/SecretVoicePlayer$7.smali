.class Lorg/telegram/ui/SecretVoicePlayer$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretVoicePlayer;->setCell(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretVoicePlayer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretVoicePlayer;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer$7;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needUpdate()Z
    .locals 1

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$7;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->-$$Nest$fgetaudioVisualizerDrawable(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/ui/Components/AudioVisualizerDrawable;

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

    .line 631
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$7;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->-$$Nest$fgetaudioVisualizerDrawable(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/ui/Components/AudioVisualizerDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AudioVisualizerDrawable;->setWaveform(ZZ[F)V

    return-void
.end method
