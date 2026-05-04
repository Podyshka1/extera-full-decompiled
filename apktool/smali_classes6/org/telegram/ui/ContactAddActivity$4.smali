.class Lorg/telegram/ui/ContactAddActivity$4;
.super Lorg/telegram/ui/Cells/TextCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactAddActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContactAddActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactAddActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lorg/telegram/ui/ContactAddActivity$4;->this$0:Lorg/telegram/ui/ContactAddActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    .line 409
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Cells/TextCell;->onLayout(ZIIII)V

    move-object p1, p0

    const/high16 p2, 0x41a80000    # 21.0f

    .line 410
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    .line 411
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p1, Lorg/telegram/ui/ContactAddActivity$4;->this$0:Lorg/telegram/ui/ContactAddActivity;

    invoke-static {p4}, Lorg/telegram/ui/ContactAddActivity;->-$$Nest$fgetoldAvatarView(Lorg/telegram/ui/ContactAddActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    .line 412
    iget-object p4, p1, Lorg/telegram/ui/ContactAddActivity$4;->this$0:Lorg/telegram/ui/ContactAddActivity;

    invoke-static {p4}, Lorg/telegram/ui/ContactAddActivity;->-$$Nest$fgetoldAvatarView(Lorg/telegram/ui/ContactAddActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p4

    iget-object p5, p1, Lorg/telegram/ui/ContactAddActivity$4;->this$0:Lorg/telegram/ui/ContactAddActivity;

    invoke-static {p5}, Lorg/telegram/ui/ContactAddActivity;->-$$Nest$fgetoldAvatarView(Lorg/telegram/ui/ContactAddActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p2

    iget-object v0, p1, Lorg/telegram/ui/ContactAddActivity$4;->this$0:Lorg/telegram/ui/ContactAddActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactAddActivity;->-$$Nest$fgetoldAvatarView(Lorg/telegram/ui/ContactAddActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p4, p2, p3, p5, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 402
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Cells/TextCell;->onMeasure(II)V

    .line 403
    iget-object p1, p0, Lorg/telegram/ui/ContactAddActivity$4;->this$0:Lorg/telegram/ui/ContactAddActivity;

    invoke-static {p1}, Lorg/telegram/ui/ContactAddActivity;->-$$Nest$fgetoldAvatarView(Lorg/telegram/ui/ContactAddActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    const/high16 p2, 0x41f00000    # 30.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 404
    iget-object p1, p0, Lorg/telegram/ui/ContactAddActivity$4;->this$0:Lorg/telegram/ui/ContactAddActivity;

    invoke-static {p1}, Lorg/telegram/ui/ContactAddActivity;->-$$Nest$fgetoldAvatarView(Lorg/telegram/ui/ContactAddActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-static {p2}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    return-void
.end method
