.class Lorg/telegram/ui/MultiContactsSelectorBottomSheet$5;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MultiContactsSelectorBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZILjava/lang/Boolean;Ljava/lang/Boolean;Lorg/telegram/ui/MultiContactsSelectorBottomSheet$SelectorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MultiContactsSelectorBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MultiContactsSelectorBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lorg/telegram/ui/MultiContactsSelectorBottomSheet$5;->this$0:Lorg/telegram/ui/MultiContactsSelectorBottomSheet;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/MultiContactsSelectorBottomSheet$5;->this$0:Lorg/telegram/ui/MultiContactsSelectorBottomSheet;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-static {v0, v1}, Lorg/telegram/ui/MultiContactsSelectorBottomSheet;->access$000(Lorg/telegram/ui/MultiContactsSelectorBottomSheet;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method
