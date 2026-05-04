.class Lorg/telegram/ui/Cells/AppIconsSelectorCell$3;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/AppIconsSelectorCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/AppIconsSelectorCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/AppIconsSelectorCell;Landroid/content/Context;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/Cells/AppIconsSelectorCell$3;->this$0:Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 0

    sub-int/2addr p3, p1

    const/high16 p1, 0x41800000    # 16.0f

    .line 134
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    add-int/2addr p3, p1

    return p3
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 139
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    return p1
.end method
