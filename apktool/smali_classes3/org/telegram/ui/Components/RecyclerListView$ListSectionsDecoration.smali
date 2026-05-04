.class public Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListSectionsDecoration"
.end annotation


# instance fields
.field private enableTopPadding:Z

.field public final isSectionItem:Lorg/telegram/messenger/Utilities$CallbackReturn;

.field private padding:I

.field public final parent:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method static bridge synthetic -$$Nest$fgetpadding(Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->padding:I

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/messenger/Utilities$CallbackReturn;IZ)V
    .locals 0

    .line 3458
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 3459
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->parent:Lorg/telegram/ui/Components/RecyclerListView;

    .line 3460
    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->isSectionItem:Lorg/telegram/messenger/Utilities$CallbackReturn;

    .line 3461
    iput p3, p0, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->padding:I

    .line 3462
    iput-boolean p4, p0, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->enableTopPadding:Z

    return-void
.end method


# virtual methods
.method public capture(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 0

    .line 3499
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3500
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 3501
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->parent:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionsBackgrounds(Landroid/graphics/Canvas;)V

    .line 3502
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public synthetic captureCalculateHash(Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;Landroid/graphics/RectF;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture$-CC;->$default$captureCalculateHash(Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;Landroid/graphics/RectF;)V

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 3472
    iget-object p4, p0, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->isSectionItem:Lorg/telegram/messenger/Utilities$CallbackReturn;

    invoke-interface {p4, p2}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 3473
    iget p4, p0, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->padding:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 3475
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    .line 3476
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 3478
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    const/4 p4, -0x1

    if-eq p2, p4, :cond_4

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p4

    .line 3481
    :goto_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    sub-int/2addr p3, v0

    if-ne p2, p3, :cond_1

    move p4, v0

    :cond_1
    if-eqz v1, :cond_3

    .line 3483
    iget-boolean p2, p0, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->enableTopPadding:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->padding:I

    goto :goto_1

    :cond_2
    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    :goto_1
    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_3
    if-eqz p4, :cond_4

    .line 3484
    iget p2, p0, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->padding:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_4
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 3492
    instance-of p3, p2, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p3, :cond_0

    .line 3493
    check-cast p2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionsBackgrounds(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
