.class Lorg/telegram/ui/TwoStepVerificationSetupActivity$3;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationSetupActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/content/Context;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$3;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 527
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 529
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$3;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetradialProgressView(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 530
    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method
