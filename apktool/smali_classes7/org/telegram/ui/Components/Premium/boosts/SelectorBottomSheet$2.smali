.class Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$2;
.super Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 129
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 130
    iget-object p2, p1, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/high16 p4, 0x429c0000    # 78.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p3, p4

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->-$$Nest$fputlistPaddingTop(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;I)V

    .line 131
    iget-object p2, p1, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->-$$Nest$fgetselectorAdapter(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->notifyChangedLast()V

    return-void
.end method
