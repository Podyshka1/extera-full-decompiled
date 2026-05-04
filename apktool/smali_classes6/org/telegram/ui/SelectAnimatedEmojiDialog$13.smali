.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$13;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$13;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onScrolled(II)V
    .locals 0

    .line 895
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 896
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$13;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$mcheckScroll(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    return-void
.end method
