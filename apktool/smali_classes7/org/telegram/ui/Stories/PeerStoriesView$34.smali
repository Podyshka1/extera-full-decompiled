.class Lorg/telegram/ui/Stories/PeerStoriesView$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 6452
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$34;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 6455
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$34;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetallowDrawSurface(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6456
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$34;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsSwiping(Z)V

    :cond_0
    return-void
.end method
