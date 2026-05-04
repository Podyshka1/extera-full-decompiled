.class Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$3;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;

.field final synthetic val$itemInset:I


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;I)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$3;->this$0:Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;

    iput p2, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$3;->val$itemInset:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 209
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 210
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p3

    if-ltz p2, :cond_0

    add-int/lit8 p3, p3, -0x1

    if-ge p2, p3, :cond_0

    .line 212
    iget p2, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$3;->val$itemInset:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method
