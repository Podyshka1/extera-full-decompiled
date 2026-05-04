.class Lorg/telegram/ui/Components/TagEditCell$1;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TagEditCell;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/TagEditCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TagEditCell;Landroid/content/Context;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/Components/TagEditCell$1;->this$0:Lorg/telegram/ui/Components/TagEditCell;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Components/TagEditCell$1;->this$0:Lorg/telegram/ui/Components/TagEditCell;

    invoke-static {v0}, Lorg/telegram/ui/Components/TagEditCell;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/TagEditCell;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    return-object v0
.end method

.method protected isActionBarVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isStatusBarVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x41c00000    # 24.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/TagEditCell$1;->this$0:Lorg/telegram/ui/Components/TagEditCell;

    invoke-static {v0}, Lorg/telegram/ui/Components/TagEditCell;->-$$Nest$fgetmessageCell(Lorg/telegram/ui/Components/TagEditCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
