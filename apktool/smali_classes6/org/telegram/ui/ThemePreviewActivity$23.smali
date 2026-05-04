.class Lorg/telegram/ui/ThemePreviewActivity$23;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 2008
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$23;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 2011
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/high16 p3, 0x41400000    # 12.0f

    .line 2012
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    .line 2013
    iput v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2014
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_0

    .line 2015
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    return-void
.end method
