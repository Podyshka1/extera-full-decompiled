.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Ljava/lang/Runnable;Landroid/view/View;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

.field final synthetic val$this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/content/Context;Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 5978
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iput-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->val$this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    .line 5981
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    move-object p1, p0

    .line 5982
    iget-object p2, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgettempLocation(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)[I

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5983
    iget-object p2, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetto(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgettempLocation(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)[I

    move-result-object p3

    const/4 p4, 0x0

    aget p3, p3, p4

    iget-object p5, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgettempLocation(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)[I

    move-result-object p5

    const/4 v0, 0x1

    aget p5, p5, v0

    iget-object v1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgettempLocation(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)[I

    move-result-object v1

    aget p4, v1, p4

    .line 5986
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    iget-object v1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgettempLocation(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)[I

    move-result-object v1

    aget v0, v1, v0

    .line 5987
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 5983
    invoke-virtual {p2, p3, p5, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 5989
    iget-object p2, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetfrom(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetto(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;

    move-result-object p3

    iget-object p4, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetshowT(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result p4

    iget-object p5, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetcurrent(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;

    move-result-object p5

    invoke-static {p2, p3, p4, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    return-void
.end method
