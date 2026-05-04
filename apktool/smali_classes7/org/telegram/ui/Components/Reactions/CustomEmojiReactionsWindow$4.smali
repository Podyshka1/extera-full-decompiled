.class Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

.field final synthetic val$reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$4;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iput-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$4;->val$reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPressed(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V
    .locals 4

    .line 258
    iget-boolean v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$4;->val$reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v0, p1, v2, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$4;->val$reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v2, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromCustomEmoji(Ljava/lang/Long;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V

    return-void
.end method
