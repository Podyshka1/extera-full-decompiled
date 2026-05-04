.class Lorg/telegram/ui/Components/ReactionsContainerLayout$4;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ReactionsContainerLayout;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$4;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 346
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 347
    iget-object p4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$4;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result p4

    if-nez p4, :cond_4

    .line 348
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/high16 p3, 0x40c00000    # 6.0f

    if-nez p2, :cond_0

    .line 350
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->left:I

    :cond_0
    const/high16 p4, 0x40800000    # 4.0f

    .line 352
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 353
    iget-object p4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$4;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->getItemCount()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_3

    .line 354
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$4;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$mshowUnlockPremiumButton(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$4;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 357
    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void

    :cond_2
    :goto_0
    const/high16 p2, 0x40000000    # 2.0f

    .line 355
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_3
    return-void

    :cond_4
    const/4 p2, 0x0

    .line 361
    iput p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
