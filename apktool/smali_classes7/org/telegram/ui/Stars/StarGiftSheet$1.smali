.class Lorg/telegram/ui/Stars/StarGiftSheet$1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/content/Context;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setTranslationY(F)V
    .locals 0

    .line 282
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 283
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetactionView(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetactionView(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 284
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetactionView(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
