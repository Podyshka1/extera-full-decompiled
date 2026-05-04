.class Lorg/telegram/ui/DialogsActivity$2;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Ljava/lang/String;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$2;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .locals 0

    .line 765
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$2;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget p1, p1, Lorg/telegram/ui/DialogsActivity;->searchViewPagerTranslationY:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 755
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/DialogsActivity$2;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 1

    .line 758
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$2;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput p2, v0, Lorg/telegram/ui/DialogsActivity;->searchViewPagerTranslationY:F

    .line 759
    iget v0, v0, Lorg/telegram/ui/DialogsActivity;->panTranslationY:F

    add-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 760
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$2;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mcheckUi_searchFiltersVisibility(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 755
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$2;->setValue(Landroid/view/View;F)V

    return-void
.end method
