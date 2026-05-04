.class Lorg/telegram/ui/PeerColorActivity$Page$3;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PeerColorActivity$Page;-><init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PeerColorActivity$Page;

.field final synthetic val$this$0:Lorg/telegram/ui/PeerColorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/PeerColorActivity;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$3;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iput-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$3;->val$this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 312
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 313
    iget-object p3, p0, Lorg/telegram/ui/PeerColorActivity$Page$3;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget p4, p3, Lorg/telegram/ui/PeerColorActivity$Page;->giftsStartRow:I

    if-lt p2, p4, :cond_9

    iget p3, p3, Lorg/telegram/ui/PeerColorActivity$Page;->giftsCount:I

    add-int v0, p4, p3

    if-lt p2, v0, :cond_0

    goto :goto_7

    :cond_0
    sub-int/2addr p2, p4

    .line 315
    div-int/lit8 p4, p2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x3

    if-ne p4, p3, :cond_2

    move p3, v0

    goto :goto_1

    :cond_2
    move p3, v1

    .line 316
    :goto_1
    rem-int/lit8 p2, p2, 0x3

    if-nez p2, :cond_3

    move p4, v0

    goto :goto_2

    :cond_3
    move p4, v1

    :goto_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    const/high16 p2, 0x41000000    # 8.0f

    if-eqz v2, :cond_5

    .line 317
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    iput v2, p1, Landroid/graphics/Rect;->top:I

    if-eqz p3, :cond_6

    .line 318
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    goto :goto_5

    :cond_6
    move p3, v1

    :goto_5
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz p4, :cond_7

    .line 319
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    goto :goto_6

    :cond_7
    move p3, v1

    :goto_6
    iput p3, p1, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_8

    .line 320
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :cond_8
    iput v1, p1, Landroid/graphics/Rect;->right:I

    :cond_9
    :goto_7
    return-void
.end method
