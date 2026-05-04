.class Lorg/telegram/ui/Cells/ChatMessageCell$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;->startRevealMedia(FFF)V
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

    .line 14293
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$8;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 14296
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$8;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/messenger/MessageObject;->isMediaSpoilersRevealed:Z

    .line 14297
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$8;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method
