.class Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;
.super Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;-><init>(Landroid/content/Context;IJLorg/telegram/messenger/BirthdayController$BirthdayState;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isKeyboardVisible:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 325
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 326
    iget-object p2, p1, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/high16 p4, 0x42800000    # 64.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p3, p4

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->-$$Nest$fputlistPaddingTop(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;I)V

    .line 327
    iget-object p2, p1, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->-$$Nest$fgetselectorAdapter(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->notifyChangedLast()V

    .line 328
    iget-boolean p2, p1, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;->isKeyboardVisible:Z

    iget-object p3, p1, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->isKeyboardVisible()Z

    move-result p3

    if-eq p2, p3, :cond_0

    .line 329
    iget-object p2, p1, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->isKeyboardVisible()Z

    move-result p2

    iput-boolean p2, p1, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;->isKeyboardVisible:Z

    if-eqz p2, :cond_0

    .line 331
    iget-object p2, p1, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->scrollToTop(Z)V

    :cond_0
    return-void
.end method
