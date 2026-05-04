.class Lorg/telegram/ui/Stars/StarsIntroActivity$10;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;ZJILorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sheet:[Lorg/telegram/ui/ActionBar/BottomSheet;

.field final synthetic val$ton:Z


# direct methods
.method constructor <init>([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;Z)V
    .locals 0

    .line 4353
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$10;->val$sheet:[Lorg/telegram/ui/ActionBar/BottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$10;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$10;->val$ton:Z

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 4356
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$10;->val$sheet:[Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4357
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$10;->val$context:Landroid/content/Context;

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$10;->val$ton:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->StarsTransactionTONFromFragmentLink:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->StarsTransactionUnknownLink:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const/4 v0, 0x0

    .line 4362
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void
.end method
