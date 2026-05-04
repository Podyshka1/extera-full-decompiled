.class Lorg/telegram/ui/Components/AudioPlayerAlert$10;
.super Lorg/telegram/ui/Components/SeekBarView;
.source "SourceFile"


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
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$10;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$10;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    iget v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingState:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 645
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SeekBarView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
