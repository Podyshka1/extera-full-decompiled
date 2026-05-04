.class Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InviteLinkBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyHintRow"
.end annotation


# instance fields
.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroid/content/Context;)V
    .locals 7

    .line 1169
    iput-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    .line 1170
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1171
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;->textView:Landroid/widget/TextView;

    const/high16 p2, 0x41600000    # 14.0f

    const/4 v0, 0x1

    .line 1172
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1173
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;->textView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1174
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1175
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;->textView:Landroid/widget/TextView;

    const/high16 v5, 0x42700000    # 60.0f

    const/4 v6, 0x0

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x10

    const/high16 v3, 0x42700000    # 60.0f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    const/high16 p2, 0x42a80000    # 84.0f

    .line 1180
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
