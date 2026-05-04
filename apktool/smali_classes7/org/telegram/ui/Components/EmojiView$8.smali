.class Lorg/telegram/ui/Components/EmojiView$8;
.super Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
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

    .line 1823
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public ignoreView(Landroid/view/View;Z)V
    .locals 1

    .line 1839
    instance-of v0, p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v0, :cond_0

    .line 1840
    check-cast p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iput-boolean p2, p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->ignoring:Z

    :cond_0
    return-void
.end method

.method public onEndAnimation()V
    .locals 2

    .line 1833
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputemojiSmoothScrolling(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 1834
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->updateEmojiDrawables()V

    return-void
.end method

.method public onPreAnimation()V
    .locals 2

    .line 1827
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->updateEmojiDrawables()V

    .line 1828
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$8;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputemojiSmoothScrolling(Lorg/telegram/ui/Components/EmojiView;Z)V

    return-void
.end method
