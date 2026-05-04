.class Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AvatarConstructorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundSelectView"
.end annotation


# instance fields
.field adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field customSelectedGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

.field gradients:Ljava/util/ArrayList;

.field selectedItemId:I

.field stableIdPointer:I

.field final synthetic this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;


# direct methods
.method public static synthetic $r8$lambda$Ate4-hnN1Rc2TCPnl5PxMWN-MOk(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;Landroid/content/Context;)V
    .locals 6

    .line 994
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    .line 995
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 985
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->gradients:Ljava/util/ArrayList;

    const/16 v0, 0xc8

    .line 987
    iput v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->stableIdPointer:I

    const/4 v0, -0x1

    .line 989
    iput v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->selectedItemId:I

    .line 996
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 997
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 998
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    move v0, p2

    .line 999
    :goto_0
    sget-object v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->defaultColors:[[I

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    .line 1000
    new-instance v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;-><init>()V

    .line 1001
    iget v4, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->stableIdPointer:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->stableIdPointer:I

    iput v4, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->stableId:I

    .line 1002
    aget-object v1, v1, v0

    aget v4, v1, p2

    iput v4, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    .line 1003
    aget v3, v1, v3

    iput v3, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    const/4 v3, 0x2

    .line 1004
    aget v3, v1, v3

    iput v3, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    const/4 v3, 0x3

    .line 1005
    aget v1, v1, v3

    iput v1, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    .line 1006
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->gradients:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 1008
    :goto_1
    sget-object v1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->premiumColors:[[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1009
    new-instance v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;-><init>()V

    .line 1010
    iget v4, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->stableIdPointer:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->stableIdPointer:I

    iput v4, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->stableId:I

    .line 1011
    aget-object v1, v1, v0

    aget v4, v1, p2

    iput v4, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    .line 1012
    aget v1, v1, v3

    iput v1, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    .line 1013
    iput p2, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    .line 1014
    iput p2, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    .line 1015
    iput-boolean v3, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->premium:Z

    .line 1016
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->gradients:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/high16 v0, 0x40800000    # 4.0f

    .line 1018
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0, v1, p2, v0, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 1019
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1020
    iput-boolean v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->useLayoutPositionOnClick:Z

    .line 1021
    new-instance p2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1042
    new-instance p2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView$1;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1099
    invoke-virtual {p0, v3}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 1

    .line 1022
    instance-of p2, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$GradientSelectorView;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$GradientSelectorView;

    iget-boolean p2, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$GradientSelectorView;->isCustom:Z

    if-nez p2, :cond_1

    .line 1023
    iget-object p1, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$GradientSelectorView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget p2, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->stableId:I

    iput p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->selectedItemId:I

    .line 1024
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-object p2, p2, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->setGradient(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;Z)V

    .line 1025
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_0

    .line 1026
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1028
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->-$$Nest$mupdateButton(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    return-void

    .line 1030
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->selectedItemId:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->customSelectedGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    if-eqz p1, :cond_3

    .line 1031
    iput p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->selectedItemId:I

    .line 1032
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-object v0, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->previewView:Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->setGradient(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;Z)V

    .line 1033
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_2

    .line 1034
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1036
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->-$$Nest$mupdateButton(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    return-void

    .line 1038
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->-$$Nest$mshowColorPicker(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 1104
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1105
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 1106
    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    div-int/2addr v0, v1

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->-$$Nest$fputgradientBackgroundItemWidth(Lorg/telegram/ui/Components/AvatarConstructorFragment;I)V

    .line 1107
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->-$$Nest$fgetgradientBackgroundItemWidth(Lorg/telegram/ui/Components/AvatarConstructorFragment;)I

    move-result v0

    const/high16 v1, 0x421c0000    # 39.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1108
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->-$$Nest$fputgradientBackgroundItemWidth(Lorg/telegram/ui/Components/AvatarConstructorFragment;I)V

    goto :goto_0

    .line 1109
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->-$$Nest$fgetgradientBackgroundItemWidth(Lorg/telegram/ui/Components/AvatarConstructorFragment;)I

    move-result v0

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1110
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->-$$Nest$fputgradientBackgroundItemWidth(Lorg/telegram/ui/Components/AvatarConstructorFragment;I)V

    .line 1112
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    return-void
.end method

.method public selectGradient(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;)V
    .locals 2

    const/4 v0, 0x0

    .line 1117
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->gradients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1118
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->gradients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1119
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->gradients:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget p1, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->stableId:I

    iput p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->selectedItemId:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1125
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->customSelectedGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    const/4 p1, 0x1

    .line 1126
    iput p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->selectedItemId:I

    .line 1128
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundSelectView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
