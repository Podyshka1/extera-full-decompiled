.class Lorg/telegram/ui/ChatActivity$63;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->dimBehindView(FZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 10889
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$63;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$63;->val$enable:Z

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$63;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 10892
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$63;->val$enable:Z

    if-nez p1, :cond_2

    .line 10893
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$63;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmap(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 10894
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$63;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrimBlurBitmapShader(Lorg/telegram/ui/ChatActivity;Landroid/graphics/BitmapShader;)V

    .line 10895
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$63;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrimBlurBitmapPaint(Lorg/telegram/ui/ChatActivity;Landroid/graphics/Paint;)V

    .line 10896
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$63;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmap(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 10897
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$63;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrimBlurBitmap(Lorg/telegram/ui/ChatActivity;Landroid/graphics/Bitmap;)V

    .line 10899
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$63;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p1, :cond_1

    .line 10900
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    .line 10902
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$63;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$msetScrimView(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V

    .line 10903
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$63;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrimViewTask(Lorg/telegram/ui/ChatActivity;Ljava/lang/Integer;)V

    .line 10904
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$63;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrimViewReaction(Lorg/telegram/ui/ChatActivity;Ljava/lang/Integer;)V

    .line 10905
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$63;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 10906
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$63;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method
