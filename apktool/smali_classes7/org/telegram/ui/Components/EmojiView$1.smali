.class Lorg/telegram/ui/Components/EmojiView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$1;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$1;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersTab(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$1;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputexpandStickersByDragg(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 398
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$1;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mupdateStickerTabsPosition(Lorg/telegram/ui/Components/EmojiView;)V

    :cond_0
    return-void
.end method
