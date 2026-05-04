.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$2;
.super Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->scrollToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;Landroid/content/Context;I)V
    .locals 0

    .line 2070
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$2;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    .line 2073
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$2;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->smoothScrolling:Z

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 2077
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$2;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->smoothScrolling:Z

    return-void
.end method
