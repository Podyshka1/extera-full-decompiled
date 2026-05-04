.class Lorg/telegram/ui/Components/EmojiView$16;
.super Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;
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
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 2078
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$16;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 2081
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2082
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$16;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2083
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$16;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object p1

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->onScrolled(FF)V

    .line 2084
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$16;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$minvalidateBlurCaptures(Lorg/telegram/ui/Components/EmojiView;)V

    :cond_0
    return-void
.end method
