.class Lorg/telegram/ui/Stars/StarGiftSheet$Roller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarGiftSheet$Roller;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftSheet$Roller;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet$Roller;)V
    .locals 0

    .line 3444
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$Roller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 3447
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$Roller;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->-$$Nest$fgetmodels(Lorg/telegram/ui/Stars/StarGiftSheet$Roller;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    .line 3448
    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->attach()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    .line 3454
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$Roller;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->-$$Nest$fgetmodels(Lorg/telegram/ui/Stars/StarGiftSheet$Roller;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    .line 3455
    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->detach()V

    goto :goto_0

    :cond_0
    return-void
.end method
