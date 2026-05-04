.class Lorg/telegram/ui/Components/InviteLinkBottomSheet$2;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InviteLinkBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/HashMap;Lorg/telegram/ui/ActionBar/BaseFragment;JZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastH:I

.field final synthetic this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$2;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7

    .line 273
    iget v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$2;->lastH:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 274
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$2;->lastH:I

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$2;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->-$$Nest$fputignoreLayout(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Z)V

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$2;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$2;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->-$$Nest$fputignoreLayout(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Z)V

    const/high16 v0, -0x80000000

    .line 279
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/view/View;->measure(II)V

    .line 280
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 282
    iget v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$2;->lastH:I

    int-to-float v5, v4

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v3

    const/high16 v6, 0x42700000    # 60.0f

    .line 283
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v4, v6

    if-ge v5, v4, :cond_0

    .line 284
    iget v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$2;->lastH:I

    sub-int v5, v4, v3

    .line 286
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$2;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v3, v1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->-$$Nest$fputignoreLayout(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Z)V

    .line 287
    iget-object v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$2;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v2, v5, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 288
    iget-object v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$2;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->-$$Nest$fputignoreLayout(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Z)V

    .line 290
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->measure(II)V

    .line 293
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$2;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->-$$Nest$fgetignoreLayout(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 268
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    return-void
.end method
