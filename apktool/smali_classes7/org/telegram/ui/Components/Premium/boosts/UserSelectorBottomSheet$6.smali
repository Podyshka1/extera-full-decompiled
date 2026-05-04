.class Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$6;
.super Landroid/view/View;
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
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->access$000(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method
