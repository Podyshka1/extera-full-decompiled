.class Lorg/telegram/ui/Components/AudioPlayerAlert$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$11;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 8

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$11;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlastTime(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3c

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Minutes"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$11;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlastTime(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x3c

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Seconds"

    invoke-static {v6, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$11;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlastDuration(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v5

    div-int/lit8 v5, v5, 0x3c

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$11;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlastDuration(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x3c

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v6, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 669
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrPlayerDuration:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const-string v0, "AccDescrPlayerDuration"

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getStepsCount()I
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate$-CC;->$default$getStepsCount(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)I

    move-result v0

    return v0
.end method

.method public synthetic needVisuallyDivideSteps()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate$-CC;->$default$needVisuallyDivideSteps(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public onSeekBarDrag(ZF)V
    .locals 1

    if-eqz p1, :cond_0

    .line 653
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    .line 655
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 656
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 657
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$11;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$mupdateProgress(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;)V

    :cond_2
    return-void
.end method

.method public onSeekBarPressed(Z)V
    .locals 0

    return-void
.end method
