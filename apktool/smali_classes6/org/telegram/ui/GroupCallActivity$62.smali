.class Lorg/telegram/ui/GroupCallActivity$62;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;->showMenuForCell(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;

.field final synthetic val$linearLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/widget/LinearLayout;)V
    .locals 0

    .line 8039
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$62;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iput-object p6, p0, Lorg/telegram/ui/GroupCallActivity$62;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 8042
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 8043
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$62;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
