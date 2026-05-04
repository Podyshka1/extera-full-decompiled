.class Lorg/telegram/ui/Cells/ChatMessageCell$4;
.super Lorg/telegram/ui/Components/FloatSeekBarAccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 1831
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Lorg/telegram/ui/Components/FloatSeekBarAccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    .line 1834
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetseekBar(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBar;->getProgress()F

    move-result v0

    return v0

    .line 1836
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1837
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetuseSeekBarWaveform(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1838
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetseekBarWaveform(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/SeekBarWaveform;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarWaveform;->getProgress()F

    move-result v0

    return v0

    .line 1840
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetseekBar(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBar;->getProgress()F

    move-result v0

    return v0

    .line 1842
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1843
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public setProgress(F)V
    .locals 1

    .line 1851
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1852
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetseekBar(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    goto :goto_1

    .line 1853
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1854
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetuseSeekBarWaveform(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1855
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetseekBarWaveform(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/SeekBarWaveform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->setProgress(F)V

    goto :goto_1

    .line 1857
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetseekBar(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    goto :goto_1

    .line 1859
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1860
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetuseSeekBarWaveform(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1861
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetseekBarWaveform(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/SeekBarWaveform;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1862
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetseekBarWaveform(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/SeekBarWaveform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->setProgress(F)V

    goto :goto_0

    .line 1865
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetseekBar(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1866
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetseekBar(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    .line 1869
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iput p1, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 1873
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->onSeekBarDrag(F)V

    .line 1874
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$4;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_5
    return-void
.end method
