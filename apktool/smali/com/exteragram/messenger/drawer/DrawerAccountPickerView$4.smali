.class Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
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


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$4;->this$0:Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 221
    iget-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$4;->this$0:Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;

    invoke-static {p1}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;->-$$Nest$fgetclipWrapper(Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
