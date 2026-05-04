.class Lorg/telegram/messenger/MediaController$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;

.field final synthetic val$playerFinal:Lorg/telegram/ui/Components/VideoPlayer;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/ui/Components/VideoPlayer;)V
    .locals 0

    .line 2413
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$6;->val$playerFinal:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2417
    :try_start_0
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$6;->val$playerFinal:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2419
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method
