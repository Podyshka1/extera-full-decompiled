.class Lorg/telegram/ui/Cells/TextSelectionHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/TextSelectionHelper;->createActionCallback()Landroid/view/ActionMode$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

.field private translateFromLanguage:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0lIpiHkWzXUmxqzGn5Rt0oicD3U(Lorg/telegram/ui/Cells/TextSelectionHelper$4;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->lambda$onActionItemClicked$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$GjEspndNTycl-MfPQY_AlsLmX0k(Lorg/telegram/ui/Cells/TextSelectionHelper$4;Landroid/view/Menu;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->lambda$onPrepareActionMode$0(Landroid/view/Menu;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eEPR_GqdxxqRHZuG_JPz_Tff7C4(Lorg/telegram/ui/Cells/TextSelectionHelper$4;Landroid/view/Menu;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->lambda$onPrepareActionMode$1(Landroid/view/Menu;Ljava/lang/Exception;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V
    .locals 0

    .line 1407
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1451
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->translateFromLanguage:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$onActionItemClicked$2()V
    .locals 1

    .line 1487
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$mshowActions(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    return-void
.end method

.method private synthetic lambda$onPrepareActionMode$0(Landroid/view/Menu;Ljava/lang/String;)V
    .locals 0

    .line 1436
    iput-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->translateFromLanguage:Ljava/lang/String;

    .line 1437
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->updateTranslateButton(Landroid/view/Menu;)V

    return-void
.end method

.method private synthetic lambda$onPrepareActionMode$1(Landroid/view/Menu;Ljava/lang/Exception;)V
    .locals 1

    .line 1439
    const-string v0, "mlkit: failed to detect language in selection"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1440
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 1441
    iput-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->translateFromLanguage:Ljava/lang/String;

    .line 1442
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->updateTranslateButton(Landroid/view/Menu;)V

    return-void
.end method

.method private updateTranslateButton(Landroid/view/Menu;)V
    .locals 1

    const/4 v0, 0x3

    .line 1453
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$fgetonTranslateListener(Lorg/telegram/ui/Cells/TextSelectionHelper;)Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->translateFromLanguage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1457
    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->isRestrictedLanguage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1458
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LanguageDetector;->hasSupport()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1453
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    .line 1465
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1468
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x1020021

    if-ne p1, p2, :cond_1

    .line 1470
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$mcopyText(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    return v0

    :cond_1
    const p2, 0x102001f

    if-ne p1, p2, :cond_3

    .line 1473
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object p2, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 1477
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iput v1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 1478
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 1479
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$mhideActions(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    .line 1480
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    .line 1481
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$fgetshowActionsRunnable(Lorg/telegram/ui/Cells/TextSelectionHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1482
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$fgetshowActionsRunnable(Lorg/telegram/ui/Cells/TextSelectionHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return v0

    :cond_3
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 1485
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$fgetonTranslateListener(Lorg/telegram/ui/Cells/TextSelectionHelper;)Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1486
    invoke-static {}, Lorg/telegram/ui/Components/TranslateAlert2;->getToLanguage()Ljava/lang/String;

    move-result-object p1

    .line 1487
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$fgetonTranslateListener(Lorg/telegram/ui/Cells/TextSelectionHelper;)Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->translateFromLanguage:Ljava/lang/String;

    new-instance v3, Lorg/telegram/ui/Cells/TextSelectionHelper$4$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper$4;)V

    invoke-interface {p2, v1, v2, p1, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;->run(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1489
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$mhideActions(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    return v0

    .line 1491
    :cond_5
    sget p2, Lorg/telegram/messenger/R$id;->menu_quote:I

    if-ne p1, p2, :cond_6

    .line 1492
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$mquoteText(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    .line 1493
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$mhideActions(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    return v0

    .line 1496
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    const p1, 0x1020021

    const v0, 0x1040001

    const/4 v1, 0x0

    .line 1410
    invoke-interface {p2, v1, p1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1411
    sget p1, Lorg/telegram/messenger/R$id;->menu_quote:I

    sget v0, Lorg/telegram/messenger/R$string;->Quote:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {p2, v1, p1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 p1, 0x2

    const v0, 0x104000d

    const v3, 0x102001f

    .line 1412
    invoke-interface {p2, v1, v3, p1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1413
    sget p1, Lorg/telegram/messenger/R$string;->TranslateMessage:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-interface {p2, v1, v0, v0, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    const/4 p1, 0x1

    .line 1419
    invoke-interface {p2, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->canShowQuote()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x1020021

    .line 1420
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1422
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->canCopy()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1424
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 1425
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1426
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->canCopy()Z

    move-result v1

    const/4 v3, 0x2

    if-nez v1, :cond_1

    .line 1427
    invoke-interface {p2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1428
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-boolean v4, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->multiselect:Z

    if-nez v4, :cond_3

    iget v4, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    if-gtz v4, :cond_2

    iget v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p1

    if-lt v1, v0, :cond_2

    goto :goto_0

    .line 1431
    :cond_2
    invoke-interface {p2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1429
    :cond_3
    :goto_0
    invoke-interface {p2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1434
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$fgetonTranslateListener(Lorg/telegram/ui/Cells/TextSelectionHelper;)Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/telegram/messenger/LanguageDetector;->hasSupport()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1435
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Cells/TextSelectionHelper$4$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$4$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper$4;Landroid/view/Menu;)V

    new-instance v2, Lorg/telegram/ui/Cells/TextSelectionHelper$4$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$4$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper$4;Landroid/view/Menu;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LanguageDetector;->detectLanguage(Ljava/lang/String;Lorg/telegram/messenger/LanguageDetector$StringCallback;Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 1445
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->translateFromLanguage:Ljava/lang/String;

    .line 1446
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->updateTranslateButton(Landroid/view/Menu;)V

    :goto_2
    return p1
.end method
