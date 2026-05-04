.class Lorg/telegram/ui/ChatActivity$97;
.super Lorg/telegram/ui/Stories/recorder/HintView2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->checkConversionDateTimeToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;I)V
    .locals 0

    .line 26786
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$97;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 26789
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    move-object p1, p0

    .line 26790
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p2

    neg-int p2, p2

    const/high16 p3, 0x42f00000    # 120.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iget-object p3, p1, Lorg/telegram/ui/ChatActivity$97;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoConversionTimeHintY(Lorg/telegram/ui/ChatActivity;)F

    move-result p3

    add-float/2addr p2, p3

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
