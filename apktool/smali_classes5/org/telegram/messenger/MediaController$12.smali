.class Lorg/telegram/messenger/MediaController$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;Z)Z
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

    .line 4254
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$12;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 4257
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$12;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {p1}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetaudioPlayer(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4258
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$12;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {p1}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetaudioPlayer(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    :cond_0
    return-void
.end method
