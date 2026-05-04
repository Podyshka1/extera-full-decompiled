.class Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView$2;
.super Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;Landroid/content/Context;IIZZLorg/telegram/ui/Components/EmojiTabsStrip;)V
    .locals 0

    .line 1393
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView$2;->this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    iput-object p7, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView$2;->val$this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    move p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IIZZ)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1396
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView$2;->this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->-$$Nest$mintercept(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;Landroid/view/MotionEvent;)V

    .line 1397
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
