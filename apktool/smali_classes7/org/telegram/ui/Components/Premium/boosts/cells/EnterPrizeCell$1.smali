.class Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$1;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;I)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$1;->this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 52
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    move-object p2, p0

    if-eqz p1, :cond_0

    .line 53
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_0

    .line 54
    iget-object p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$1;->this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;

    invoke-static {p3}, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;->-$$Nest$fgeteditText(Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    .line 55
    sget-object p3, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p3}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    :cond_0
    return-object p1
.end method
